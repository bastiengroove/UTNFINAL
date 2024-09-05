import { useState, useEffect } from 'react';
import axios from 'axios';
import NovedadItem from '../js/NovedadItem';

const NovedadesPage = (props) => {
    const [loading, setLoading] = useState(false);
    const [novedades, setNovedades] = useState([]);

    useEffect(() => {
        const fetchNovedades = async () => {
            try {
              const response = await axios.get(`${process.env.REACT_APP_API_URL}/api/novedades`);
              console.log(response.data);
            } catch (error) {
              console.error('Error fetching novedades:', error);
            }
          };

        cargarNovedades();
    }, []);

    return (
        <div>
            <h2>Novedades</h2>
            {loading ? (
                <p>Cargando...</p>
            ) : (
                novedades.map(item => (
                    <NovedadItem
                        key={item.id}
                        title={item.titulo}
                        subtitle={item.subtitulo}
                        imagen={item.imagen}
                        body={item.cuerpo}
                    />
                ))
            )}
        </div>
    );
}

export default NovedadesPage;