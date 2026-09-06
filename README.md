SQL select 

Consultas SQL basicas sobre la tabla sales de TechStore, resueltas para el equipo de finanzas.

Contenido
consultas_basicas.sql: las 3 consultas requeridas (exploración general, selección de columnas específicas, y alias en español)
Preguntas de reflexión:

¿Por qué es mala práctica usar SELECT * en producción?
Rendimiento: SELECT * trae todas las columnas de la tabla, incluidas las que la consulta no necesita. En una tabla con decenas de columnas o millones de filas, esto consume más memoria y ancho de banda de red de lo necesario, 
y hace más lenta la consulta sin ningún beneficio real.

Mantenibilidad: si mañana alguien agrega una columna nueva a sales (por ejemplo, un descuento aplicado), cualquier consulta con SELECT * va a empezar a devolver esa columna nueva sin que nadie lo haya pedido y si ese resultado alimenta un reporte o un dashboard,
el comportamiento cambia de forma silenciosa e inesperada. Seleccionar columnas explícitas hace que la consulta sea predecible en el tiempo.

Seguridad (adicional): si la tabla tuviera columnas sensibles (por ejemplo, datos de pago o información personal), SELECT * las expone automáticamente a cualquiera que corra la consulta, aunque no las necesite para su análisis.

¿Por qué son importantes los alias para un stakeholder no técnico?
Un nombre de columna como total_amount es entendible para quien escribió la base de datos, pero no necesariamente para alguien del área de finanzas que solo va a ver el resultado en una planilla o un reporte. 
Usando AS, esa misma columna se puede mostrar como monto_total_pedido, algo que cualquier persona del negocio interpreta de inmediato sin tener que preguntar qué significa el campo.

En la Consulta 3 de este ejercicio, por ejemplo, order_date se convierte en fecha_pedido y quantity en cantidad_unidades, nombres que un stakeholder no técnico puede leer directamente en español y entender sin ninguna aclaración adicional. 
Esto es especialmente valioso cuando el resultado de la consulta se exporta a Excel o se conecta a una herramienta de BI, porque los encabezados ya quedan listos para presentación profesional.
