// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

struct Question {
  string question;
  string[] options;
}

contract Survey {
  string public title;
  string public description;
  Question[] questions;

  // primitive: int, bool, uint
  // memory, storage, calldata
  constructor(
    string memory _title,
    string memory _description,
    Question[] memory _questions
  ) {
    title = _title;
    description = _description;

    for (uint i = 0; i < _questions.length; i++) {
      questions.push(
        Question({
          question: _questions[i].question,
          options: _questions[i].options
        })
      );

      // Question storage q = questions.push();
      // q.question = _questions[i].question;
      // q.options = _questions[i].options;
    }
  }

  function getQuestions() external view returns (Question[] memory) {
    return questions;
  }
}
