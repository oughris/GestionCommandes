<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="ISO-8859-1">
   <meta charset="UTF-8">
   <title>Gestion des commandes</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<%
String nom = request.getParameter("nom");
String adresse = request.getParameter("adresse");
String email = request.getParameter("email");
int facture = Integer.parseInt(request.getParameter("facture"));

int qte1 = Integer.parseInt(request.getParameter("L1C1"));
int qte2 = Integer.parseInt(request.getParameter("L2C1"));
int qte3 = Integer.parseInt(request.getParameter("L3C1"));

float prix1 = Float.parseFloat(request.getParameter("L1C2")) ;
float prix2 = Float.parseFloat(request.getParameter("L2C2")) ;
float prix3 = Float.parseFloat(request.getParameter("L3C2")) ;

float total1 = qte1 * prix1 ;
float total2 = qte2 * prix2 ;
float total3 = qte3 * prix3 ;
float totalnet = total1 + total2 + total3;
double tva = (totalnet*0.2);
float remise = Float.parseFloat(request.getParameter("remise")) ;
double totalttc = totalnet+tva-remise;
%>
 <form action="Facture.jsp" method="post">
    <div class="container mt-5">
    <div class="mb-3">
      <label for="nom" class="form-label">Nom Client :</label>
      <input type="text" class="form-control" id="nom" name="nom" disabled value="<%=nom%>">
    </div>
    <div class="mb-3">
      <label for="adresse" class="form-label">Adresse Client :</label>
      <input type="text" class="form-control" id="adresse" name="adresse" disabled value="<%=adresse%>">
    </div>
    <div class="mb-3">
      <label for="email" class="form-label">Email Client :</label>
      <input type="text" class="form-control" id="email" name="email" disabled value="<%=email%>">
    </div>
    <div class="mb-3">
      <label for="facture" class="form-label">Facture N° :</label>
      <input type="text" class="form-control" id="facture" name="facture" disabled value="<%=facture%>">
    </div>
    </div>
<div class="container mt-5">
  <table class="table table-striped">
    <thead class="thead-dark">
      <tr>
        <th scope="col">Description</th>
        <th scope="col">Quantité</th>
        <th scope="col">Prix Unitaire</th>
        <th scope="col">Total HT</th>
      </tr>
    </thead>
  <tbody>
      <tr>
        <th>Ordinateur portable, Macbook Pro M2</th>
        <td><input type="text" class="form-control" id="L1C1" name="L1C1" disabled value="<%=qte1%>"></td>
        <td><input type="text" class="form-control" id="L1C2" name="L1C2" disabled value="<%=prix1%>"></td>
        <td><input type="text" class="form-control" id="L1C3" name="L1C3" disabled value="<%=total1%>"></td>
      </tr>
      <tr>
        <th>Imprimante Hp Pro 7740</th>
        <td><input type="text" class="form-control" id="L2C1" name="L2C1" disabled value="<%=qte2%>"></td>
        <td><input type="text" class="form-control" id="L2C2" name="L2C2" disabled value="<%=prix2%>"></td>
        <td><input type="text" class="form-control" id="L2C3" name="L2C3" disabled value="<%=total2%>"></td>
      </tr>
      <tr>
        <th>Disque Dur SSD 500GO</th>
        <td><input type="text" class="form-control" id="L3C1" name="L3C1" disabled value="<%=qte3%>"></td>
        <td><input type="text" class="form-control" id="L3C2" name="L3C2" disabled value="<%=prix3%>"></td>
        <td><input type="text" class="form-control" id="L3C3" name="L3C3" disabled value="<%=total3%>"></td>
      </tr>
      <tr>
        <td class="align-middle text-center" rowspan="4" colspan="2"><strong>Conditions de paiement</strong><br>
        <span class="normal-text">Les modes de paiement acceptés
          <br>incluent le chèque, le virement bancaire
          <br>et la carte de crédit
        </span>
        </td>
        <td>Totale net HT</td>
        <td><input type="text" class="form-control" id="ttnet" name="ttnet" disabled value="<%=totalnet%>"></td>
      </tr>
      <tr>
        <td>TVA</td>
        <td><input type="text" class="form-control" id="tva" name="tva" disabled value="<%=tva%>" ></td>
      </tr>
      <tr>
        <td>Remise</td>
        <td><input type="text" class="form-control" id="remise" name="remise" disabled value="<%=remise%>"></td>
      </tr>
      <tr>
        <td>Totale TTC</td>
        <td><input type="text" class="form-control" id="ttc" name="ttc" placeholder="0.00DH" disabled value="<%=totalttc%>"></td>
      </tr>
    </tbody>
  </table>
  <br>
  <br>
   <button type="submit" class="btn btn-primary">Calculer</button></div></form>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

    <!-- Ajouter le script pour Bootstrap JS (facultatif) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
</body>
</html>










