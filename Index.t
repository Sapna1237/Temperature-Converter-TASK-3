<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Temperature Converter</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
    }
    .container {
      max-width: 500px;
      margin: 0 auto;
      background-color: Blue;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }
    h1 {
      text-align: center;
      margin-top: 0;
    }
    form {
      display: flex;
      flex-direction: column;
      align-items: center;
    }
    label {
      display: block;
      margin-bottom: 10px;
    }
    input[type="number"] {
      padding: 8px;
      border-radius: 4px;
      border: 1px solid #ccc;
      font-size: 16px;
      width: 100%;
      box-sizing: border-box;
      margin-bottom: 10px;
    }
    select {
      padding: 8px;
      border-radius: 4px;
      border: 1px solid #ccc;
      font-size: 16px;
      width: 100%;
      box-sizing: border-box;
      margin-bottom: 10px;
    }
    button {
      background-color: #4CAF50;
      color: white;
      padding: 12px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
    }
    button:hover {
      background-color: #45a049;
    }
    .result {
      margin-top: 20px;
      text-align: center;
      font-size: 24px;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Temperature Converter</h1>
    <form>
      <label for="temperature">Temperature:</label>
      <input type="number" id="temperature" name="temperature" placeholder="Enter temperature" required>
      <label for="unit_from">Convert from:</label>
      <select id="unit_from" name="unit_from">
        <option value="F">Fahrenheit</option>
        <option value="C">Celsius</option>
      </select>
      <label for="unit_to">Convert to:</label>
      <select id="unit_to" name="unit_to">
        <option value="F">Fahrenheit</option>
        <option value="C">Celsius</option>
      </select>
      <button type="button" onclick="convert()">Convert</button>
      <div class="result" id="result"></div>
    </form>
  </div>
  <script>
    function convert() {
      const temperature = parseFloat(document.getElementById("temperature").value);
      const unitFrom = document.getElementById("unit_from").value;
      const unitTo = document.getElementById("unit_to").value;
      
      let convertedTemp;
      let convertedUnit;
      
      if (unitFrom === "F") {
        if (unitTo === "C") {
          convertedTemp = (temperature - 32) * 5/9;
          convertedUnit = "C";
        } else {
          convertedTemp = temperature;
          convertedUnit = "F";
        }
} else {
        if (unitTo === "F") {
          convertedTemp = temperature * 9/5 + 32;
          convertedUnit = "F";
        } else {
          convertedTemp = temperature;
          convertedUnit = "C";
        }
      }
      
      document.getElementById("result").innerHTML = `${convertedTemp.toFixed(2)}&deg;${convertedUnit}`;
    }
  </script>
</body>
</html>