<style type="text/css">
  table {
  color: #010101;
  border-spacing: 5px;
  font-size: 13px;
  text-align: justify;
  }

  table th{
  vertical-align: top;
  text-align: right;
  }
</style>

<table>
  <tbody>
    <tr>
      <th> Purpose: </th>
      <td> ${info?.purpose}</td>
    </tr>

    <tr>
      <th> Name: </th>
      <td> ${info?.name}</td>
    </tr>

    <tr>
      <th> Email: </th>
      <td> ${info?.email}</td>
    </tr>

    <tr>
      <th>Webpage: </th>
      <td>${info?.webpage?: "N.A."} </td>
    </tr>

    <tr>
      <th> Subject: </th>
      <td> ${info?.subject}</td>
    </tr>

    <tr>
      <th> Description: </th>
      <td> ${info?.desc}</td>
    </tr>
  </tbody>
</table>
