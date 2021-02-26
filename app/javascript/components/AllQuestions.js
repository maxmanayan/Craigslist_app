import React from "react"


const AllQuestions = (props) => {
  const {questions} = props

  const renderQuestions = () => {
    return questions.map( question => {
      return(
        <div>
          <h2>{question.text}</h2>
        </div>
      )
    })
  }
  return(
    <div>
      <h1>All Questions Page</h1>
      <div>{renderQuestions()}</div>
    </div>
  )
}

export default AllQuestions;