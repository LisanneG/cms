json.id @location.id
json.title @location.title
json.text @location.text
json.x @location.x
json.y @location.y
json.question @question.question

json.answers @question.answers, :id, :answer, :correct

