<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Form Example</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
 
  <form action="Facture.jsp" method="post">
    <div class="container mt-5">
    <div class="mb-3">
      <label for="nom" class="form-label">Nom Client :</label>
      <input type="text" class="form-control" id="nom" name="nom">
    </div>

    <div class="mb-3">
      <label for="adresse" class="form-label">Adresse Client :</label>
      <input type="text" class="form-control" id="adresse" name="adresse">
    </div>

    <div class="mb-3">
      <label for="email" class="form-label">Email Client :</label>
      <input type="text" class="form-control" id="email" name="email">
    </div>

    <div class="mb-3">
      <label for="facture" class="form-label">Facture N° :</label>
      <input type="text" class="form-control" id="facture" name="facture">
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
        <td><input type="text" class="form-control" id="L1C1" name="L1C1"></td>
        <td><input type="text" class="form-control" id="L1C2" name="L1C2"></td>
        <td><input type="text" class="form-control" id="L1C3" name="L1C3"></td>
      </tr>
      
      <tr>
        <th>Imprimante Hp Pro 7740</th>
        <td><input type="text" class="form-control" id="L2C1" name="L2C1"></td>
        <td><input type="text" class="form-control" id="L2C2" name="L2C2"></td>
        <td><input type="text" class="form-control" id="L2C3" name="L2C3"></td>
      </tr>
      
      <tr>
        <th>Disque Dur SSD 500GO</th>
        <td><input type="text" class="form-control" id="L3C1" name="L3C1"></td>
        <td><input type="text" class="form-control" id="L3C2" name="L3C2"></td>
        <td><input type="text" class="form-control" id="L3C3" name="L3C3"></td>
      </tr>
      
      <tr>
        <td class="align-middle text-center" rowspan="4" colspan="2"><strong>Conditions de paiement</strong><br>
         
        <span class="normal-text">Les modes de paiement acceptés
          <br>incluent le chèque, le virement bancaire
          <br>et la carte de crédit
        </span>
        
        </td>
        <td>Totale net HT</td>
        <td><input type="text" class="form-control" id="L4C3" name="ttnet"></td>
      </tr>
      
      <tr>
        <td>TVA</td>
        <td><input type="text" class="form-control" id="L5C3" name="tva"></td>
      </tr>
      
      <tr>
        <td>Remise</td>
        <td><input type="text" class="form-control" id="L6C3" name="remise"></td>
      </tr>
      
      <tr>
        <td>Totale TTC</td>
        <td><input type="text" class="form-control" id="L7C3" name="ttc" placeholder="0.00DH"></td>
      </tr>
    </tbody>
  </table>
  <br>
  <br>
   <button type="submit" class="btn btn-primary">Calculer</button>
</div>
 
 </form>

</body>
</html>