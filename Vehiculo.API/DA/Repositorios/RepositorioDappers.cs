using Abstracciones.Interfaces.DA;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;

namespace DA.Repositorios
{
    public class RepositorioDappers : IRepositorioDapper

    {

        private readonly IConfiguration  _configuracion;
        private readonly SqlConnection _conexcionBaseDatos;

        public RepositorioDappers(IConfiguration configuracion)
        {
            _configuracion = configuracion;
            _conexcionBaseDatos = new SqlConnection(_configuracion.GetConnectionString("BD"));
        }

        public SqlConnection ObtenerRepositorio()
        {
            return _conexcionBaseDatos;
        }
    }
}
