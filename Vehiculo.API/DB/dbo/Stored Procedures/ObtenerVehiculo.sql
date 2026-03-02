CREATE PROCEDURE ObtenerVehiculo
	-- Add the parameters for the stored procedure here
	
	@Id uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT Vehiculo.Id AS Expr1, Vehiculo.IdModelo, Vehiculo.Placa, Vehiculo.Color, Vehiculo.Anio, Vehiculo.Precio, Vehiculo.CorreoPropietario, Vehiculo.TelefonoPropietario, Marcas.Nombre, Modelos.Nombre AS Expr2
FROM     Vehiculo INNER JOIN
                  Marcas ON Vehiculo.Id = Marcas.Id INNER JOIN
                  Modelos ON Marcas.Id = Modelos.IdMarca
WHERE  (Vehiculo.Id = @Id)
END