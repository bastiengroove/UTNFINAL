var express = require("express");
var router = express.Router();
var novedadesModel = require('../../models/novedadesModel');
const util = require("util");
const cloudinary = require("cloudinary").v2;
const uploader = util.promisify(cloudinary.uploader.upload);
const destroy = util.promisify(cloudinary.uploader.destroy);

// Para listar las novedades
router.get("/", async function (req, res, next) {
  try {
    var novedades = await novedadesModel.getNovedades();

    novedades = novedades.map(novedad => {
      if (novedad.img_id) {
        const imagen = cloudinary.image(novedad.img_id, {
          width: 70,
          height: 70,
          crop: 'pad'
        });
        return {
          ...novedad,
          imagen
        };
      } else {
        return {
          ...novedad,
          imagen: ''
        };
      }
    });

    res.render("admin/novedades", {
      layout: "admin/layout",
      persona: req.session.nombre,
      novedades
    });
  } catch (error) {
    console.log(error);
    res.redirect('/admin');
  }
});

// Para agregar novedades
router.get('/agregar', (req, res, next) => {
  res.render('admin/agregar', {
    layout: 'admin/layout'
  });
});

router.post('/agregar', async (req, res, next) => {
  try {
    var img_id = "";

    if (req.files && Object.keys(req.files).length > 0) {
      let imagen = req.files.imagen;
      if (imagen.mimetype.startsWith('image/') && imagen.size <= 5 * 1024 * 1024) { // 5MB max
        img_id = (await uploader(imagen.tempFilePath)).public_id;
      } else {
        throw new Error('Formato de imagen no válido o tamaño excedido');
      }
    }

    if (req.body.titulo && req.body.subtitulo && req.body.cuerpo) {
      await novedadesModel.insertNovedad({
        ...req.body,
        img_id
      });
      res.redirect('/admin/novedades');
    } else {
      res.render('admin/agregar', {
        layout: 'admin/layout',
        error: true,
        message: 'Todos los campos son requeridos'
      });
    }
  } catch (error) {
    console.log(error);
    res.render('admin/agregar', {
      layout: 'admin/layout',
      error: true,
      message: 'No se pudo cargar la novedad.'
    });
  }
});

// Para eliminar novedades
router.get('/eliminar/:id', async (req, res, next) => {
  try {
    var id = req.params.id;
    let novedad = await novedadesModel.getNovedadById(id);

    if (!novedad) {
      res.redirect('/admin/novedades');
      return;
    }

    if (novedad.img_id) {
      await destroy(novedad.img_id);
    }

    await novedadesModel.deleteNovedadById(id);
    res.redirect('/admin/novedades');
  } catch (error) {
    console.log(error);
    res.redirect('/admin/novedades');
  }
});

// Para modificar novedades
router.get('/modificar/:id', async (req, res, next) => {
  try {
    var id = req.params.id;
    var novedad = await novedadesModel.getNovedadById(id);

    if (!novedad) {
      res.redirect('/admin/novedades');
      return;
    }

    res.render('admin/modificar', {
      layout: 'admin/layout',
      novedad
    });
  } catch (error) {
    console.log(error);
    res.redirect('/admin/novedades');
  }
});

router.post('/modificar', async (req, res, next) => {
  try {
    let img_id = req.body.img_original;
    let borrar_img_vieja = false;

    if (req.body.img_delete === "1") {
      img_id = null;
      borrar_img_vieja = true;
    } else if (req.files && Object.keys(req.files).length > 0) {
      let imagen = req.files.imagen;
      if (imagen.mimetype.startsWith('image/') && imagen.size <= 5 * 1024 * 1024) { // 5MB max
        if (img_id) {
          await destroy(img_id);
        }
        img_id = (await uploader(imagen.tempFilePath)).public_id;
        borrar_img_vieja = true;
      } else {
        throw new Error('Formato de imagen no válido o tamaño excedido');
      }
    }

    if (req.body.titulo && req.body.subtitulo && req.body.cuerpo) {
      await novedadesModel.modificarNovedadById({
        titulo: req.body.titulo,
        subtitulo: req.body.subtitulo,
        cuerpo: req.body.cuerpo,
        img_id
      }, req.body.id);

      if (borrar_img_vieja && req.body.img_original) {
        await destroy(req.body.img_original);
      }

      res.redirect('/admin/novedades');
    } else {
      res.render('admin/modificar', {
        layout: 'admin/layout',
        error: true,
        message: 'Todos los campos son requeridos'
      });
    }
  } catch (error) {
    console.log(error);
    res.render('admin/modificar', {
      layout: 'admin/layout',
      error: true,
      message: 'No se pudo modificar la novedad.'
    });
  }
});

module.exports = router;