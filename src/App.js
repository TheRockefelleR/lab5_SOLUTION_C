import './App.css';

function App() {
  const version = process.env.APP_VERSION || '1.0.0';
  return (
    
    <div className="App">
      <header className="App-header">
        
          Nazwa hosta: {window.location.hostname} <br></br>
          Adress:{window.location.protocol}{window.location.host}<br></br>
          Wersja: {version}<br></br>
    
      </header>
    </div>
  );
}

export default App;
