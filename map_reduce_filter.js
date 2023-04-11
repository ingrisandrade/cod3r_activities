// map
const numeros = [3, 4, 7, 1, 9, 7];

const dobro = (numero) => numero * 2;

const resultado = numeros.map(dobro);
console.log(resultado);

// --------------------------------------

const array = [
  { nome: '...', preco: 23.67, desconto: 0.2 },
  { nome: '...', preco: 120.99, desconto: 0.3 },
  { nome: '...', preco: 3567.67, desconto: 0.5 },
  { nome: '...', preco: 10.80, desconto: 0.1 },
  { nome: '...', preco: 7.43, desconto: 0.05 },
  { nome: '...', preco: 12355.33, desconto: 0.15 },
];

const getCusto = (precoComDeconto) => parseInt(precoComDeconto * 0.3); // parseInt gera um número inteiro

const getPrecoComDesconto = (produto) => produto.preco * (1 - produto.desconto);

const resultadoArray = array
  .map(getPrecoComDesconto)
  .map(getCusto)
console.log(resultadoArray);

// --------------------------------------
// filter
const notas = [7.1, 8.3, 6.3, 7.7, 9.1, 4.3];

const aprovado = (nota) => nota >= 7;

const resultadoNotas = notas.filter(aprovado);
console.log(resultadoNotas);

// map e filter aplicados juntos, o resultado do map depende do resultado do filter.

const produtos   = [
  { nome: '...', preco: 23.67, desconto: 0.2 },
  { nome: '...', preco: 120.99, desconto: 0.3 },
  { nome: '...', preco: 3567.67, desconto: 0.5 },
  { nome: '...', preco: 10.80, desconto: 0.1 },
  { nome: '...', preco: 7.43, desconto: 0.05 },
  { nome: '...', preco: 12355.33, desconto: 0.15 },
];

const getCusto2 = (precoComDeconto) => parseInt(precoComDeconto * 0.3); // parseInt gera um número inteiro

const getPrecoComDesconto2 = (produto) => produto.preco * (1 - produto.desconto);

const altoCusto = (produto2) => produto2.preco >= 1000;

const resultadoProdutos = produtos
  .filter(altoCusto)
  .map(getPrecoComDesconto2)
  .map(getCusto2)
console.log(resultadoProdutos);

// --------------------------------------
// reduce
const numerosReduce = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

const somar = (a, b) => a + b;
console.log(numerosReduce.reduce(somar));

// -

const numerosReduce2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

const somar2 = (a, b) => a + b;
console.log(numerosReduce2.reduce(somar2, 1000)); // Com valor inicial de 1000

// -
// reduce para calcular a média
const numerosReduce3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

const media = (acc, num) => {
  // console.log(acc); // exibe cada um dos acumuladores
  // console.log(acc, num); // exibe cada um dos acumuladores e o número da chamada
    const novoTotal = acc.total + num;
    const novaQtde = acc.qtde + 1;
      return {
      total: novoTotal,
      qtde: novaQtde,
      media: novoTotal / novaQtde,
    };
};

const valorInicial = {total: 0, qtde: 0, media: 0};
const valorFinal = numerosReduce3.reduce(media, valorInicial);

console.log(valorFinal.media);