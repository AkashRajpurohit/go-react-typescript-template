import { createLazyFileRoute } from "@tanstack/react-router";
import { useEffect, useState } from "react";

export const Route = createLazyFileRoute("/")({
	component: Index,
});

function Index() {
	const [message, setMessage] = useState("");

	useEffect(() => {
		fetch("/api/ping")
			.then((res) => res.text())
			.then((data) => setMessage(data))
			.catch((err) => console.error(err));
	}, []);

	return (
		<div className="bg-gray-900 text-gray-200 min-h-screen flex flex-col gap-6 justify-center items-center">
			<h1 className="font-bold text-5xl">Go + React</h1>
			<p>Backend says: {message}</p>
		</div>
	);
}
