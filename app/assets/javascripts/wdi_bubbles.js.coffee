$ ->
  maxValue = 1000;

  data =
    label: "Full-Stack Web Development"
    amount: maxValue
    color: "#0066bb" # color for root node, will be inherited by children
    children: [
      label: "Front-end"
      amount: maxValue/4
    ,
      label: "Back-end"
      amount: maxValue/4
    ,
      label: "Computer Science"
      amount: maxValue/4
      color: "#ff3300"
      children: [
        label: 'Data Structures'
        amount: maxValue/16
      ,
        label: 'Languages'
        amount: maxValue/16
      ]
    ]

  new BubbleTree(
    data: data
    container: ".bubbletree"
  )