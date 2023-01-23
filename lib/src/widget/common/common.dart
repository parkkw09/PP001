enum Foo {
  foo(0, 'foo'),
  boo(1, 'boo'),
  too(5, 'too');

  const Foo(this.type, this.value);
  final int type;
  final String value;
}