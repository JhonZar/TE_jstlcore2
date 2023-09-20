<%@page import="com.emergentes.modelo.Persona"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (session.getAttribute("listaper") == null) {
                ArrayList<Persona> lista = new ArrayList<Persona>();
                //agregamos lista a la coneccion
                lista.add(new Persona(1, "Jhonatan Zarzuri", "72091695", "jhon@gmail.com"));
                lista.add(new Persona(2, "Luis Chauca", "7283763", "lui@gmail.com"));
                lista.add(new Persona(3, "Salem Fernandez", "7238762", "sale@gmail.com"));
                //colocamos la lista como un atributo de session
                session.setAttribute("listaper", lista);
            }
        %>
        <h1>Ejemplos de JSTL Core</h1>
        <p>Nombre: Jhonatan Luis Zarzuri Chauca</p>
        <p>CI: 9076430</p>
        <ul>
            <li><a href="jstl_if.jsp?login=ok">Ejemplo del if</a></li>
            <li><a href="jstl_choose.jsp?estado=I">Probando el choose</a></li>
            <li><a href="jstl_foreach.jsp">Recoriendo la coleccion con foreach</a></li>
        </ul>
    </body>
</html>
