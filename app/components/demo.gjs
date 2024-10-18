import { template } from '@ember/template-compiler/runtime';

const Foo = template('Hello there', { strict: true });

const Bar = template('Bar: <Foo />', {
  eval: function () {
    return eval(arguments[0]);
  },
});

<template>
  hi.
  <Bar />
</template>
