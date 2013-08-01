class wdi
  @maxValue: 1000
  @GA_RED: '#f03'
  @GA_GREY: '#222'
  @SHRINK_RATIO: 3

  @alternate_colors_and_shrink: (obj, level) ->
    if level % 2 == 0
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
      label: "Front-end"
    ,
      label: "Back-end"
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
        ,
          label: 'Ruby'
        ,
          label: 'R'
        ,
          label: 'Java'
        ]
      ]
    ]

  @document_ready: ->
    console.log wdi.data
    wdi.alternate_colors_and_shrink(wdi.data, 0)
    console.log wdi.data
    new BubbleTree(
      data: wdi.data
      container: ".bubbletree"
    )


$(document).ready(wdi.document_ready)


