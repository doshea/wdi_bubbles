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
      label: "Front-End"
      children: [
        label: 'HTML'
      ,
        label: 'CSS'
      ,
        label: 'Javascript'
      ]
    ,
      label: "Back-End"
    ,
      label: "Computer Science"
      children: [
        label: 'Data Structures'
        children: [
          label: 'Stack'
        ]
      ,
        label: 'Sorting and Searching'
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
      ]
    ,
      label: 'Project Management'
      children: [
        label: 'Pivotal Tracker'
      ,
        label: 'Scrum'
      ,
        label: 'Version/Revision Control'
      ]
    ,
      label: 'TDD/BDD'
    ,
      label: 'Hosting'
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


