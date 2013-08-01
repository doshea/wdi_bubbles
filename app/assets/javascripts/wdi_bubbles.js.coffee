class wdi
  @maxValue: 1000
  @GA_RED: '#f03'
  @GA_GREY: '#222'
  @GA_OUT: '#ccc'
  @SHRINK_RATIO: 3

  @alternate_colors_and_shrink: (obj, level) ->
    if obj.mystery
      obj.color = wdi.GA_OUT
    else if level % 2 == 0
      obj.color = wdi.GA_RED
    else
      obj.color = wdi.GA_GREY
    obj.amount = wdi.maxValue/(Math.pow(wdi.SHRINK_RATIO, level+1))
    if obj.children && obj.children.length > 0
      for child in obj.children
        do (child) ->
          wdi.alternate_colors_and_shrink(child, level + 1)

  @data:
    label: "Full-Stack Web Development"
    children: [
      label: 'Back-End'
      children: [
        label: 'Database Management System'
        children: [
          label: 'Data Persistence'
        ,
          label: 'SQL'
          children: [
            label: 'PostgreSQL'
          ,
            label: 'MySQL'
            mystery: true
          ,
            label: 'SQLite'
          ,
            label: 'Oracle'
            mystery: true
          ,
            label: 'Microsoft SQL Server'
            mystery: true
          ]
        ,
          label: 'NoSQL'
          children: [
            label: 'Redis'
          ,
            label: 'MongoDB'
            mystery: true
          ,
            label: 'CouchDB'
            mystery: true
          ]
        ]
      ,
        label: 'Web App Frameworks'
        children: [
          label: 'Ruby on Rails'
          children: [
            label: 'Models'
            children: [
              label: 'ActiveRecord'
              children: [
                label: 'Database Dependence'
              ,
                label: 'Naming Conventions'
              ]
            ,
              label: 'Associations'
              children: [
                label: 'belongs_to'
              ,
                label: 'has_many'
              ,
                label: 'has_one'
              ,
                label: 'HABTM'
              ,
                label: 'STI'
              ,
                label: 'Self-Joins'
              ,
                label: 'Polymorphism'
              ]
            ,
              label: 'Class vs. Instance'
            ,
              label: 'Validations'
              children: [
                label: 'Presence'
              ,
                label: 'Uniqueness'
              ,
                label: 'Length'
              ,
                label: 'Numericality'
              ,
                label: 'Custom'
              ]
            ]
          ,
            label: 'Views'
            children: [
              label: 'Embedded Ruby'
              children: [
                label: '.html.erb'
              ,
                label: '.html.haml'
              ,
                label: '.js.erb'
              ]
            ,
              label: 'View Helpers'
              children: [
                label: 'link_to'
              ,
                label: 'form_for vs. form_tag'
              ,
                label: 'image_tag'
              ,
                label: 'f.xx_field vs. xx_field_tag'
              ]
            ,
              label: 'Partials'
            ,
              label: 'Layouts'
            ,
              label: 'Yield'
            ]
          ,
            label: 'Controllers'
            children: [
              label: 'CRUD'
            ,
              label: 'Callbacks/Filters/Actions'
              children: [
                label: 'before_'
              ,
                label: 'after_'
              ,
                label: 'around_'
              ]
            ,
              label: 'Data Rendering'
              children: [
                label: 'HTML'
              ,
                label: 'JS'
              ,
                label: 'JSON'
              ,
                label: 'XML'
              ]
            ]
          ,
            label: 'Routing'
            children: [
              label: 'Custom Routes'
            ,
              label: 'Default Resources'
            ,
              label: 'Member vs. Collection'
            ,
              label: 'Custom Resourceful Routes'
            ]
          ,
            label: 'Migrations'
          ,
            label: 'Asset Pipeline'
          ,
            label: 'Environments'
            children: [
              label: 'Development'
            ,
              label: 'Test'
            ,
              label: 'Production'
            ]
          ,
            label: 'Gemfile'
          ,
            label: 'Rails 4'
          ]
        ,
          label: 'ASP.NET'
          mystery: true
        ,
          label: 'Django'
          mystery: true
        ]
      ,
        label: 'Security'
        mystery: true
      ]
    ,
      label: 'Test Driven Development'
      children: [
        label: 'Test Frameworks'
        children: [
          label: 'Rspec'
          children: [
            label: 'Model Testing'
            children: [
              label: 'Attribute Tests'
            ,
              label: 'Validation Tests'
            ,
              label: 'Association Tests'
            ,
              label: 'Class/Instance Method Tests'
            ]
          ,
            label: 'Controller Testing'
          ,
            label: 'Feature Testing'
            children: [
              label: 'Navigation (Path) Tests'
            ,
              label: 'DOM Element Tests'
            ,
              label: 'User Flow Tests'
            ,
              label: 'Synchronous JS Tests'
            ]
          ]
        ,
          label: 'Test Unit'
          mystery: true
        ,
          label: 'Cucumber'
        ,
          label: 'Jasmine'
          mystery: true
        ]
      ,
        label: 'Mocking/Stubbing'
      ,
        label: 'Behavior Driven Development'
      ]
    ,
      label: 'Hosting'
      children: [
        label: 'Domain Names'
        mystery: true
        children: [
          label: 'Namecheap.com'
          mystery: true
        ,
          label: 'Godaddy.com'
          mystery: true
        ]
      ,
        label: 'Static Hosting'
        children: [
          label: 'Github.io'
        ,
          label: 'Amazon S3'
          mystery: true
        ,
          label: 'Pretty much everywhere'
        ]
      ,
        label: 'Rails Hosting'
        children: [
          label: 'Heroku'
        ,
          label: 'Amazon S3'
          mystery: true
        ,
          label: 'WebFaction'
          mystery: true
        ]
      ]
    ,
      label: 'Project Management'
      children: [
        label: 'Pivotal Tracker'
      ,
        label: 'Scrum'
      ,
        label: 'Version/Revision Control'
        children: [
          label: 'Git'
        ,
          label: 'Mercurial'
          mystery: true
        ,
          label: 'Subversion'
          mystery: true
        ]
      ]
    ,
      label: "Front-End"
      children: [
        label: 'HTML'
        children: [
          label: 'HTML5'
          children: [
            label: 'Semantic HTML'
          ,
            label: 'WebSockets'
          ,
            label: 'SVG'
          ,
            label: 'canvas'
          ]
        ,
          label: 'The DOM'
        ,
          label: 'Tags'
        ,
          label: 'Attributes'
        ]
      ,
        label: 'CSS'
        children: [
          label: 'Selectors'
          children: [
            label: 'id'
          ,
            label: 'class'
          ,
            label: 'Attributes'
          ,
            label: 'Pseudo-Selectors'
            children: [
              label: ':not'
            ,
              label: ':hover'
            ,
              label: ':focus'
            ,
              label: ':visited'
            ,
              label: ':checked'
            ,
              label: ':selected'
            ,
              label: ':nth-child(n)'
            ]
          ,
            label: 'tag'
          ]
        ,
          label: 'Specificity'
          children: [
            label: '!important'
          ,
            label: 'Inline Styles'
          ]
        ,
          label: 'Vendor Styles'
          children: [
            label: '-o'
          ,
            label: '-ms'
          ,
            label: '-moz'
          ,
            label: '-webkit'
          ]
        ,
          label: 'CSS3'
          children: [
            label: '@media'
          ,
            label: 'transform'
          ,
            label: 'transition'
          ,
            label: 'filter'
          ,
            label: 'border-radius'
          ,
            label: 'box-shadow'
          ,
            label: 'Gradients'
          ,
            label: 'Alpha/Opacity'
          ]
        ,
          label: 'SASS'
        ]
      ,
        label: 'Javascript'
        children: [
          label: 'jQuery'
        ,
          label: 'Underscore.js'
        ,
          label: 'Coffeescript'
          children: [
            label: 'Ruby-like Syntax'
          ,
            label: 'Object-Oriented Support'
          ]
        ,
          label: 'Front-end MVC'
          children: [
            label: 'Backbone.js'
          ,
            label: 'Angular.js'
            mystery: true
          ,
            label: 'Ember.js'
            mystery: true
          ,
            label: 'Closure'
            mystery: true
          ]
        ]
      ]
    ,
      label: "Computer Science"
      children: [
        label: 'Data Types'
        children: [
          label: 'String'
        ,
          label: 'Number/Fixnum'
        ,
          label: 'Boolean'
        ,
          label: 'Array/List'
        ,
          label: 'Hash/Dictionary'
        ,
          label: 'Symbol'
        ,
          label: 'Nil/Null'
        ]
      ,
        label: 'Data Structures'
        children: [
          label: 'Stack'
        ,
          label: 'Queue'
        ,
          label: 'Singly-Linked List'
        ,
          label: 'Doubly-Linked List'
        ,
          label: 'Binary Tree'
        ,
          label: 'Graph'
        ]
      ,
        label: 'Flow Control'
        children: [
          label: 'Conditionals'
        ,
          label: 'Loops'
        ,
          label: 'Exception Handling'
        ,
          label: 'Iterators and Enumerables'
        ,
          label: 'Threading'
          mystery: true
        ,
          label: 'Blocks'
        ]
      ,
        label: 'Object-Oriented Programming'
        children: [
          label: 'Classes'
        ,
          label: 'Objects'
        ,
          label: 'Methods'
        ,
          label: 'Modules'
        ,
          label: 'Inheritance'
        ]
      ,
        label: 'Sorting/Searching'
        children: [
          label: 'Big O Notation'
        ,
          label: 'Selection Sort'
        ,
          label: 'Merge Sort'
        ,
          label: 'Bubble Sort'
        ,
          label: 'Depth-First Search'
        ,
          label: 'Breadth-First Search'
        ]
      ,
        label: 'Languages'
        children: [
          label: 'Python'
          mystery: true
        ,
          label: 'Ruby'
        ,
          label: 'R'
          mystery: true
        ,
          label: 'Java'
          mystery: true
        ]
      ,
        label: 'Recursion'
        children: [
          label: 'Base Case'
        ,
          label: 'Fractals'
        ,
          label: 'Recursive Case'
        ]
      ]
    ]

  @document_ready: ->
    #Automatically and recursively assigns colors and amounts to all bubbles, starting from root bubble
    wdi.alternate_colors_and_shrink(wdi.data, 0)
    #Now that labels, colors and amounts are set, builds the BubbleTree
    new BubbleTree(
      data: wdi.data
      container: ".bubbletree"
    )


$(document).ready(wdi.document_ready)


