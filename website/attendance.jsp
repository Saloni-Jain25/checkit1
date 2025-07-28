<!-- attendance.jsp -->
<!DOCTYPE html>
<html>
<head>
  <title>Mark Attendance</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <h2>Mark Attendance</h2>
  <form>
    <label>Class:</label>
    <select><option>IT-2</option></select>
    <label>Branch:</label>
    <select><option>IT</option></select>
    <label>Time:</label>
    <select><option>9:00 - 10:00</option></select>
    <label>Batch:</label>
    <select><option>B1</option></select>
    <label>Kind:</label>
    <select><option>Lecture</option><option>Lab</option></select>

    <table>
      <tr><th>Name</th><th>Enrollment</th><th>Attendance</th></tr>
      <tr>
        <td>Kratika Jain</td>
        <td>0827IT221079</td>
        <td>
          <input type="radio" name="0827IT221079" value="0">0
          <input type="radio" name="0827IT221079" value="1">1
          <input type="radio" name="0827IT221079" value="2">2
        </td>
      </tr>
      <tr>
        <td>Kunal Kushwah</td>
        <td>0827IT221080</td>
        <td>
          <input type="radio" name="0827IT221080" value="0">0
          <input type="radio" name="0827IT221080" value="1">1
          <input type="radio" name="0827IT221080" value="2">2
        </td>
      </tr>
    </table>
    <button type="submit">Submit</button>
  </form>
</body>
</html>