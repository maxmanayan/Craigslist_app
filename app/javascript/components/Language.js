import React from "react";


export default (props) => {
  const {name, id, about} = props.language
  const {questions} = props
  const renderQuestions = () =>{ 
    return questions.map(q => {
      return(
        <div>
          <p>question: {q.text}</p>
          <p>answer: {q.answer}</p>
          <p>id: {q.id}</p>
          <a href={`/languages/${id}/questions/${q.id}/edit`}> Edit Form</a>
        </div>
      )
    })}
  return(
    <div>
      <h1>Language Page</h1>
      <p>{name}</p>
      <p>{id}</p>
      <p>{about}</p>
      <hr />
      <a href={`/languages/${id}/questions/new`}> Get New Form</a>
      <div>{renderQuestions()}</div>
    </div>
  )
}