! USEd vocabularies go here
USING: hello-world tools.test kernel sequences ;
! the vocab name goes here
IN: hello-world

! your implementation goes here
: hello-name ( name -- greeting )
  dup "" = [ drop "World" ] when
  "Hello, " swap append "!" append ;
