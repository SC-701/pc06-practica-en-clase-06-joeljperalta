CREATE PROCEDURE ObtenerVehiculos
	-- Add the parameters for the stored procedure here
	@Id uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT Vehiculo.Id, Vehiculo.IdModelo, Vehiculo.Placa, Vehiculo.Color, Vehiculo.Precio, Vehiculo.Anio, Vehiculo.CorreoPropietario, Vehiculo.TelefonoPropietario, Marcas.Nombre AS Marca, Modelos.Nombre AS Modelo
FROM     Marcas INNER JOIN
                  Modelos ON Marcas.Id = Modelos.IdMarca INNER JOIN
                  Vehiculo ON Modelos.Id = Vehiculo.IdModelo
WHERE  (Vehiculo.Id = @Id)
END