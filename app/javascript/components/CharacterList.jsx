import React from 'react';

export default class CharacterList extends React.Component {
  render() {
    const { characters } = this.props;

    const cards = characters.map((character, index) => {
      return (
        <div className="col col-xs-8" key={index}>
          <h3>Name: {character.name}</h3>
          <p>Race: {character.race}</p>
          <p>XP: {character.xp}</p>
          <p>Description: {character.description}</p>
        </div>
      );
    });

    return (
      <div className="row">
        {cards}
      </div>
    );
  }
}
