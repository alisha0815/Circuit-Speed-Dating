import consumer from "./consumer";

const initMatchCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.matchId;

    consumer.subscriptions.create({ channel: "MatchChannel", id: id }, {
      received(data) {
        console.log(data); // called when data is broadcast in the cable
      },
    });
  }
}

consumer.subscriptions.create({ channel: "MatchChannel", id: id }, {
  received(data) {
    messagesContainer.insertAdjacentHTML('beforeend', data);
  }
});

export { initMatchCable };
