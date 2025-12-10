; Keywords
[
  "module"
  "func"
  "event"
  "type"
  "extern"
  "import"
  "instance"
  "data_instance"
  "in"
  "out"
  "trigger"
  "property"
  "parameter"
  "consumes"
  "produces"
  "borrows"
  "or"
] @keyword

; Type identifiers
(type_identifier) @type.builtin

; Custom types in qualified form
(qualified_type
  (identifier) @type)

; Generic type parameters
(generic_type
  base: (type_identifier) @type.builtin
  param: (type_identifier) @type.builtin)

; Type keyword
(type_keyword
  "type" @keyword
  (identifier) @type)

; Module names
(module_declaration
  name: (identifier) @module)

; Function names
(function_declaration
  name: (identifier) @function)

(extern_function_declaration
  name: (identifier) @function)

(func_declaration_short
  name: (identifier) @function)

; Event names
(event_declaration
  name: (identifier) @function)

(extern_event_declaration
  name: (identifier) @function)

; Instance names and types
(instance_declaration
  name: (identifier)? @variable
  type: (qualified_identifier) @type)

(data_instance_declaration
  name: (identifier)? @variable)

; Attribute keys
(attribute
  key: (identifier) @attribute)

(attribute
  key: (string) @attribute)

; Object fields
(object_field
  key: (identifier) @property)

(object_field
  key: (string) @property)

; Parameter values
(parameter_value
  key: (identifier) @property)

(instance_param
  key: (identifier) @property)

; Connection statements
(connection_statement
  source: (identifier) @variable)

(connection_statement
  target: (qualified_identifier) @variable)

; Identifiers
(qualified_identifier
  (identifier) @variable)

; Literals
(string) @string
(number) @number
(boolean) @boolean
(null) @constant.builtin

; Comments
(comment) @comment

; Operators
"->" @operator
"." @operator

; Punctuation
[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
] @punctuation.bracket

[
  ","
  ":"
] @punctuation.delimiter

; Escape sequences in strings
(escape_sequence) @string.escape

; Backtick identifiers
(backtick_identifier) @variable
