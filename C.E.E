<!DOCTYPE html>
<html lang="pt">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Conversor de Escalas Elétricas</title>
  <style>
    :root {
      --cor-principal: #4f46e5;
      --cor-secundaria: #06b6d4;
      --cor-fundo: #f9fafb;
      --cor-resultado: #d1fae5;
    }

    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: var(--cor-fundo);
      margin: 0;
      padding: 0;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    header {
      background: var(--cor-principal);
      color: white;
      width: 100%;
      padding: 20px 0;
      text-align: center;
    }

    .container {
      background: white;
      margin-top: 30px;
      padding: 25px;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
      width: 90%;
      max-width: 500px;
    }

    h1 {
      margin: 0;
      font-size: 24px;
    }

    label {
      font-weight: bold;
      margin-top: 15px;
      display: block;
    }

    input, select {
      width: 100%;
      padding: 10px;
      margin-top: 8px;
      border-radius: 6px;
      border: 1px solid #ccc;
      font-size: 16px;
    }

    button {
      width: 100%;
      background-color: var(--cor-secundaria);
      color: white;
      padding: 12px;
      font-size: 16px;
      border: none;
      border-radius: 8px;
      margin-top: 20px;
      cursor: pointer;
      transition: background 0.3s;
    }

    button:hover {
      background-color: #0891b2;
    }

    .resultado {
      background-color: var(--cor-resultado);
      color: #065f46;
      margin-top: 20px;
      padding: 15px;
      font-size: 22px;
      text-align: center;
      border-radius: 8px;
    }

    footer {
      margin-top: 40px;
      font-size: 14px;
      color: #6b7280;
    }
  </style>
</head>
<body>

  <header>
    <h1>Conversor de Escalas Elétricas</h1>
    <p>Converta valores entre diversas unidades elétricas</p>
  </header>

  <div class="container">

    <label for="valor">Valor:</label>
    <input type="number" id="valor" placeholder="Digite um valor">

    <label for="unidade">Unidade:</label>
    <select id="unidade">
      <option value="V">Volts (V)</option>
      <option value="A">Amperes (A)</option>
      <option value="C">Coulombs (C)</option>
      <option value="Ω">Ohms (Ω)</option>
      <option value="W">Watts (W)</option>
      <option value="J">Joules (J)</option>
      <option value="F">Farads (F)</option>
    </select>

    <label for="escalaOrigem">Escala de Origem:</label>
    <select id="escalaOrigem">
      <option value="1e-9">nano (n)</option>
      <option value="1e-6">micro (μ)</option>
      <option value="0.001">mili (m)</option>
      <option value="1">Base</option>
      <option value="1000">quilo (k)</option>
      <option value="1e6">mega (M)</option>
      <option value="1e9">giga (G)</option>
    </select>

    <label for="escalaDestino">Escala de Destino:</label>
    <select id="escalaDestino">
      <option value="1e-9">nano (n)</option>
      <option value="1e-6">micro (μ)</option>
      <option value="0.001">mili (m)</option>
      <option value="1">Base</option>
      <option value="1000">quilo (k)</option>
      <option value="1e6">mega (M)</option>
      <option value="1e9">giga (G)</option>
    </select>

    <button onclick="converter()">Converter</button>

    <div class="resultado" id="resultado">
      O resultado aparecerá aqui.
    </div>

  </div>

  <footer>
    Desenvolvido por Você
  </footer>

  <script>
    function converter() {
      const valor = parseFloat(document.getElementById('valor').value);
      const unidade = document.getElementById('unidade').value;
      const escalaOrigem = parseFloat(document.getElementById('escalaOrigem').value);
      const escalaDestino = parseFloat(document.getElementById('escalaDestino').value);

      if (isNaN(valor)) {
        document.getElementById('resultado').innerHTML = "Por favor, insira um valor válido.";
        return;
      }

      const valorConvertido = (valor * escalaOrigem) / escalaDestino;

      document.getElementById('resultado').innerHTML = `
        ${valor} ${unidade} convertido é:<br>
        <strong>${valorConvertido.toFixed(6)} ${unidade}</strong>
      `;
    }
  </script>

</body>
</html>
