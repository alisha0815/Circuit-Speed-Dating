import consumer from "./consumer";

const initMatchCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.matchId;
    const textArea = document.getElementById("message_content");

    consumer.subscriptions.create({ channel: "MatchChannel", id: id }, {
      received(data) {
      messagesContainer.insertAdjacentHTML('beforeend', data);
      textArea.value = "";
      }
    });
  }
}



export { initMatchCable };
