import consumer from '../channels/consumer.js'

consumer.subscriptions.create(
  { channel: "DivineMessageChannel" },
  {
    received(data) {
      this.prependLine(data)
    },

    prependLine(data) {
      const html = this.createLine(data)
      const element = document.getElementById('messages')
      element.prepend(html)
    },

    createLine(data) {
      const wrapper = document.createElement('div');
      const inner = document.createElement('div');
      inner.innerText = data.message;
      wrapper.append(inner)
      return wrapper;
    }
  }
)
