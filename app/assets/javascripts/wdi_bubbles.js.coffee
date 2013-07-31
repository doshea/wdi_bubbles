$ ->
  maxValue = 1000;
  GA_RED = '#f03'
  GA_GREY = '#222'

  data =
    label: "Full-Stack Web Development"
    amount: maxValue
    color: GA_RED # color for root node, will be inherited by children
    children: [
      label: "Front-end"
      amount: maxValue/3
      color: GA_GREY
    ,
      label: "Back-end"
      amount: maxValue/3
      color: GA_GREY
    ,
      label: "Computer Science"
      amount: maxValue/3
      color: GA_GREY
      children: [
        label: 'Data Structures'
        amount: maxValue/9
      ,
        label: 'Languages'
        amount: maxValue/9
      ]
    ]

  new BubbleTree(
    data: data
    container: ".bubbletree"
  )