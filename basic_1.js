const bomDia = () => console.log('Bom dia!');

const boaTarde = () => console.log('Boa tarde!');

const executarQualquerCoisa = (fn) => {
  if(typeof fn === 'function') {
    fn();
  }
};

executarQualquerCoisa(3);
executarQualquerCoisa(bomDia);
executarQualquerCoisa(boaTarde);

// ------------------------------
//Retornar uma função a partir de uma outra função 
const potencia = (base) => (exp) => Math.pow(base, exp);

// Armazena uma constante para chamar a potência de forma indireta:
const potenciaDe2 = potencia(2);
console.log(potenciaDe2(8));

// Chama a potência diretamente sem armazenar uma constante.
console.log(potencia(3)(4));

// ------------------------------

// Criar uma função que calcula os valores:
const somar = (a) => (b) => (c) =>  a + b + c;

const somarAB = somar(3)(4);
console.log(somarAB(13));
console.log(somar(13)(20)(30));

// ------------------------------

const calcular = (x) => (y) => (fn) => fn(x, y);

const subtrair = (a, b) => a - b;

const multiplicar =  (a, b) => a * b;

const resultado1 = calcular(10)(5)(subtrair);
console.log(resultado1);
const resultado2 = calcular(10)(5)(multiplicar);
console.log(resultado2);

// ------------------------------

// arrow function
const felizNatal = () => console.log('Feliz Natal!');
felizNatal();

const saudacao = nome => `Fala ${nome}, blz`;
console.log(saudacao('Maria'));

// ------------------------------

const somarNum = (...  numeros) => {
  let total = 0;
  for(let numero of numeros) {
    total += numero;
  }; 
  return total;
}

console.log(somarNum(1, 2, 3));
console.log(somarNum(1, 2, 3, 4 ,5 , 6));
console.log(somarNum(1, 2, 3, 4 ,5 , 6, 7, 8, 9, 10));

// ------------------------------

//callback
const exec = (fn, a, b) => (fn(a, b));

const somarNoTerminal = (x, y) => console.log(x + y);
const subtrairNoTerminal = (w, z) => console.log(w - z);
const subtrair1 = (w, z) => w - z;

exec(somarNoTerminal, 56, 38);
exec(subtrairNoTerminal, 182, 27);
const r = exec(subtrair1, 50, 25);
console.log(r);

setInterval(() => console.log('Exec2...'), 5000);

//callback 2

const fs = require('fs');
const path = require('path');

const caminho = path.join(__dirname, 'dados.txt');

const exibirConteudo = (__, conteudo) => console.log(conteudo.toString());

fs.readFile(caminho, {}, exibirConteudo);

console.log('Início...');
// Passando a funçao de forma direta, com callback:
fs.readFile(caminho, (_, conteudo) => console.log(conteudo.toString()));
console.log('Fim...');

// Sem usar callback, de forma síncrona:
console.log('Início Sync...');
const conteudo = fs.readFileSync(caminho);
console.log(conteudo.toString());
console.log('Fim Sync...');