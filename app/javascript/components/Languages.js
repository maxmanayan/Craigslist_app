import React from "react";


const Languages = (props) => {
  const {languages} = props

  const renderLanguages = () => {
    return languages.map( language => {
      return(
        <div>
          <h2>{language.name}</h2>
          <a href={`/languages/${language.id}`}>Show Language</a>
        </div>
      )
    }
      
    )
  }
  return(
    <div>
      <h1>Languages Page</h1>
      <div>{renderLanguages()}</div>
      <a href="/allQuestions">View All Questions</a>
    </div>
  )
}



export default Languages;