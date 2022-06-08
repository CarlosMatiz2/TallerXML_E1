<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xls="http://www.w3.org/1999/XSL/Transform">
    <xsl:output version="1.0" method="html"  encoding="UTF-8" indent="yes"/>
    <xsl:template match="/listaventas">
        <html lang="es">
            <head>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"/>
            </head>
            <body>
                <div class="container">
                    <table class="table table-dark table-hover caption-top">
                        <caption class="fs-2 fw-bold">Lista Ventas</caption>
                        <thead>
                            <tr>
                                <th scope="col">Importe</th>
                                <th scope="col">Comprador</th>
                                <th scope="col">Vendedor</th>
                                <th scope="col">Fecha</th>
                                <th scope="col">Código Factura</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="venta">
                                <tr>
                                    <td scope="row"><xls:value-of select="importe"/></td>
                                    <td><xls:value-of select="comprador"/></td>
                                    <td><xls:value-of select="vendedor"/></td>
                                    <td><xls:value-of select="fecha"/></td>
                                    <td><xls:value-of select="codigoFactura"/></td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>