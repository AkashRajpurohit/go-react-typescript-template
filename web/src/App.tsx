import { useEffect, useState } from "react";
import "./App.css";

function App() {
	const [message, setMessage] = useState("");

	useEffect(() => {
		fetch("/api/ping")
			.then((res) => res.text())
			.then((data) => setMessage(data))
			.catch((err) => console.error(err));
	}, []);

	return (
		<div>
			<h1>Go + React</h1>
			<p>Backend says: {message}</p>
		</div>
	);
}

export default App;
