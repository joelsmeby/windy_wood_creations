import type { Config } from "tailwindcss";

const config: Config = {
  content: ["./app/**/*.{js,ts,jsx,tsx,mdx}"],
  theme: {
    extend: {
      colors: {
        forest: {
          950: "#132019",
          900: "#1b2d22",
          800: "#263c2e",
          700: "#35513e"
        },
        stonework: {
          50: "#f7f6f1",
          100: "#ece8de",
          200: "#d7d0c0",
          500: "#817967",
          700: "#514b40",
          900: "#292721"
        },
        fir: "#8c633d"
      },
      boxShadow: {
        low: "0 20px 70px rgba(19, 32, 25, 0.12)"
      }
    }
  },
  plugins: []
};

export default config;
