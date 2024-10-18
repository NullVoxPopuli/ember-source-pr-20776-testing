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

const WithBlock = template('{{yield}}');

console.log({ Foo, Bar, template });

const Demo = <template>
  <fieldset><legend>{{@name}}</legend>
    {{yield}}
  </fieldset>
</template>;

<template>
  hi.
  <Demo @name="Bar"><Bar /></Demo>
  <Demo @name="Foo"><Foo /></Demo>
  <Demo @name="WithBlock">
    <WithBlock>had a block passed</WithBlock> <br />
  </Demo>
</template>
