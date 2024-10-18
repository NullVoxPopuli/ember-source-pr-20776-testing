import { template } from '@ember/template-compiler/runtime';

const Foo = template('Hello, {{greeting}}', {
  strict: true,
  scope: () => ({
    greeting: 'folks',
  })
});

const Bar = template('Bar: <Foo />', {
  eval: function () {
    return eval(arguments[0]);
  },
});

console.log({ Foo, Bar, template });

<template>
  hi.
  <Bar /><br>
  ---<br>
  <Foo /><br>
</template>
