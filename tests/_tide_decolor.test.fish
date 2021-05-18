# RUN: %fish %s

function _decolor -a color
    _tide_decolor (set_color $color || echo)'Hello Foo'
end

_decolor red # CHECK: Hello Foo
_decolor normal # CHECK: Hello Foo
_decolor D7AF00 # CHECK: Hello Foo
