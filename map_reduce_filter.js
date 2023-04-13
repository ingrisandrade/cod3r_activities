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

// -

const nums = [1, 2, 3, 4, 5];
const dobro2 = n => n * 2;
console.log(nums.map(dobro2));

// -
// callback com os três parâmetros(valor, índice e array):

  const nums2 = [1, 2, 3, 4, 5];
  const dobro3 = (valor, index, array) => valor * 2 + index + array.length;
  console.log(nums2.map(dobro3));

// -

const nomes = ['Ana', 'Bia', 'Gui', 'Lia', 'Rafa'];
const primeiraLetra = texto => texto[0];
const letras = nomes.map(primeiraLetra);
console.log(nomes, letras);

// -

const carrinho = [
  { nome: 'Caneta', qtde: 10, preco: 7.99 },
  { nome: 'Impressora', qtde: 0, preco: 649.50 },
  { nome: 'Caderno', qtde: 4, preco: 27.10 },
  { nome: 'Lapis', qtde: 3, preco: 5.82 },
  { nome: 'Tesoura', qtde: 1, preco: 19.20 },
];

const getNome = item => item.nome;
console.log(carrinho.map(getNome));

const getTotal = item => item.qtde * item.preco;
const totais = carrinho.map(getTotal);
console.log(totais);

// - 
// Implementando uma versão de map(versão oficial):

Array.prototype.meuMap = function(fn) { //Nesse caso não pode ser um arrow function, pois ele não dá acesso a array a partir do this.
  const novoArray = [];
  for(let index = 0; index < this.length; index ++) {
    novoArray.push(fn(this[index], index, this));
  }; // nesse caso this é o elemento.
  return novoArray;
};

const getNome2 = item => item.nome;
console.log(carrinho.meuMap(getNome2));

const getTotal2 = item => item.qtde * item.preco;
const totais2 = carrinho.meuMap(getTotal2);
console.log(totais2);

// --------------------------------------
// filter
const notas = [7.1, 8.3, 6.3, 7.7, 9.1, 4.3];

const aprovado = (nota) => nota >= 7;

const resultadoNotas = notas.filter(aprovado);
console.log(resultadoNotas);

const carrinho2 = [
  { nome: 'Caneta', qtde: 10, preco: 7.99 },
  { nome: 'Impressora', qtde: 0, preco: 649.50 },
  { nome: 'Caderno', qtde: 4, preco: 27.10 },
  { nome: 'Lapis', qtde: 3, preco: 5.82 },
  { nome: 'Tesoura', qtde: 0, preco: 19.20 },
];

const qtdeMaiorqueZero = item => item.qtde > 0;
const itensValidos = carrinho2.filter(qtdeMaiorqueZero);
console.log(itensValidos);

// -
// Implementando uma versão de filter(versão oficial):
const carrinho4 = [
  { nome: 'Caneta', qtde: 10, preco: 7.99 },
  { nome: 'Impressora', qtde: 0, preco: 649.50 },
  { nome: 'Caderno', qtde: 4, preco: 27.10 },
  { nome: 'Lapis', qtde: 3, preco: 5.82 },
  { nome: 'Tesoura', qtde: 0, preco: 19.20 },
];

Array.prototype.meuFilter = function(fn) {
  const novoArrayFilter = [];
  for(let index = 0; index < this.length; index++) {
    if(fn(this[index], index, this)) {
      novoArrayFilter.push(this[index]);
    }
  }
  return novoArrayFilter;
}

const getNomeFilter = item => item.nome;
const qtdeMaiorqueZeroFilter = item => item.qtde > 0;
const nomeItensValidosFilter = carrinho4
  .meuFilter(qtdeMaiorqueZeroFilter)
  .map(getNomeFilter)
console.log(nomeItensValidosFilter);

// map e filter aplicados juntos, o resultado do map depende do resultado do filter.

const carrinho3 = [
  { nome: 'Caneta', qtde: 10, preco: 7.99 },
  { nome: 'Impressora', qtde: 0, preco: 649.50 },
  { nome: 'Caderno', qtde: 4, preco: 27.10 },
  { nome: 'Lapis', qtde: 3, preco: 5.82 },
  { nome: 'Tesoura', qtde: 0, preco: 19.20 },
];

const getNome3 = item => item.nome;
const qtdeMaiorqueZero2 = item => item.qtde > 0;
const nomeItensValidos = carrinho3
  .filter(qtdeMaiorqueZero2)
  .map(getNome3)
console.log(nomeItensValidos);

// -

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

// -

const carrinhoReduce = [
  { nome: 'Caneta', qtde: 10, preco: 7.99 },
  { nome: 'Impressora', qtde: 0, preco: 649.50 },
  { nome: 'Caderno', qtde: 4, preco: 27.10 },
  { nome: 'Lapis', qtde: 3, preco: 5.82 },
  { nome: 'Tesoura', qtde: 1, preco: 19.20 },
];

const getTotalReduce = item => item.qtde * item.preco;
const somarReduce = (acc, el) => acc + el;

const totalGeral = carrinhoReduce
  .map(getTotalReduce)
  .reduce(somarReduce)

console.log((totalGeral));
