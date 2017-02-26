
const BroidKik = require('/app/broid-kik');

const kik = new broidKik({
  username: 'alexis702_bot',
  token: "30e5e82f-cae0-4100-bc80-dbd6f6866343",
  http: {
    webhookURL: "http://127.0.0.1/"
  }
});

kik.connect()
  .subscribe({
    next: data => console.log(data),
    error: err => console.error(`Something went wrong: ${err.message}`),
    complete: () => console.log('complete'),
  });