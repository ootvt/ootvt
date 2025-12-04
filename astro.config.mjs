/** @type {import('tailwindcss').Config} */
import typography from '@tailwindcss/typography';

export default {
	content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
	theme: {
		extend: {},
	},
	plugins: [
		typography, // <--- 把插件注册在这里
	],
}