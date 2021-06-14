<%! 
    
    private double calcularvelocidad(int tamano) {
        int res;

        res = tamano / (100/8);

        return res;
        
    }
%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Calcular velocidad de descarga</title>
</head>
<body>
    <h1>Calculo de velocidad de descarga</h1>
    <h2>Velocidad: 100 Mb/s</h2>
    <form action="index.jsp" method="get">
        <p>
            Tamaño del archivo: <input type="text" name="tamano">Mb
        <input type="submit" value="Calcular"></p>        
    </form>

    <%
        String tamanoGet = request.getParameter("tamano");
        if(tamanoGet!=null) {
            int tamano = Integer.valueOf(tamanoGet);   
            double resultado = calcularvelocidad(tamano);
            out.println("<p>La velocidad estimada son: "  + resultado +" segundos."+"</p>");
        }
    %>
</body>
</html>