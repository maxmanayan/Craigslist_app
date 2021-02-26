import React from "react";
import { PROPS_ATTR } from "react_ujs";

  // post "/languages/:language_id/questions", to: "questions#create"
  // patch "/languages/:language_id/questions/:id", to: "questions#update"

export default (props) => {
  const { language, question, errors} = props 
  const defaultText = question.text ? question.text : ""
  const defaultAnswer = question.answer ? question.answer : ""
  const actionURL = question.id ? `/languages/${language.id}/questions/${question.id}` : `/languages/${language.id}/questions`

  const renderErrors = () => {
    return errors.map(e =>{
      return(
         <p>Language Must Exist</p>)
      })
  }

  return(
    <div>
      <h1>{question.id ? "Edit" : "New"}</h1>
      {errors && renderErrors()}
      <form action={actionURL} method="post">
        {question.id && <input type="hidden" name="_method" method="patch" />}

        <p>Question</p>
        <input defaultValue={defaultText} name="question[text]" />


        <p>Answer</p>
        <input defaultValue={defaultAnswer} name="question[answer]" />

        <button type="input">{question.id ? "Update" : "Create"}</button>
      </form>
    </div>
  )
}