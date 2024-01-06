<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.java.code.PenalisationModel" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>liste ouvrage</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
</head>
<body>
<!DOCTYPE html>
<html>
<head>
    <title>Insertion de pénalisation</title>
</head>
<body>
<form action="penalisation" method="Get">
<button class="waves-effect waves-light btn" type="submit">penalisation</button></form>


<table class="responsive-table striped centered">
        <thead>
          <tr>
              <th>Matricule</th>
              <th>ID Examplaire</th>
              <th>date Penalisation mise a jours</th>
             
              
              
              
          </tr>
        </thead>

        <tbody>
           <%
Object PenalisationObj = request.getAttribute("penalisation");

if (PenalisationObj instanceof List) {
    List<PenalisationModel> penalisations = (List<PenalisationModel>) PenalisationObj;

    for (PenalisationModel penalisationss : penalisations) {
%>
    <tr>
        <td><%= penalisationss.getMatricule() %></td>
        <td><%= penalisationss.getIdexamplaie() %></td>
        <td><%= penalisationss.getDatefinpenalisation() %></td>
         
        
      


        
        <!-- Ajoutez d'autres attributs de l'abonné -->
    </tr>
<%
    }
} else {
    // Gérer le cas où l'attribut n'est pas une liste d'Abonnee
    // Peut-être afficher un message d'erreur ou faire une action appropriée
}
%>
        <a class="waves-effect waves-light btn" href="penalisation">Charger les penalisation</a>
            
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    

    
</body>
</html>

</body>
</html>