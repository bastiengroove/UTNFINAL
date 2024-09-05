
import React, { useEffect, useState } from 'react';

function Novedades() {
  const [novedades, setNovedades] = useState([]);

  useEffect(() => {
    // Llamada al backend para obtener las novedades
    fetch('http://localhost:3000/api/novedades') // Cambia el puerto si es necesario
      .then(response => response.json())
      .then(data => setNovedades(data))
      .catch(error => console.error('Error fetching novedades:', error));
  }, []);

  return (
    <div>
      <h2>Novedades</h2>
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>Título</th>
            <th>Descripción</th>
            <th>Imagen</th>
          </tr>
        </thead>
        <tbody>
          {novedades.map(novedad => (
            <tr key={novedad.id}>
              <td>{novedad.id}</td>
              <td>{novedad.titulo}</td>
              <td>{novedad.descripcion}</td>
              <td>
                {novedad.imagen ? (
                  <img src={novedad.imagen} alt="Imagen Novedad" width="100" />
                ) : (
                  'No imagen'
                )}
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}

export default Novedades;
