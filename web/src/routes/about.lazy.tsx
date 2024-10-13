import { createLazyFileRoute } from "@tanstack/react-router";

export const Route = createLazyFileRoute("/about")({
	component: About,
});

function About() {
	return (
		<div className="bg-gray-900 text-gray-200 min-h-screen flex flex-col gap-6 justify-center items-center">
			<p>Hello from About</p>
		</div>
	);
}
