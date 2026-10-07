import axios from "axios";

let rawUrl = (import.meta.env.VITE_API_URL || "").trim();

if (!rawUrl) {
  rawUrl = "http://localhost:5000/api";
}

// Remove trailing slash
rawUrl = rawUrl.replace(/\/+$/, "");

// Ensure it ends with /api
if (!rawUrl.endsWith("/api")) {
  rawUrl = `${rawUrl}/api`;
}

const api = axios.create({
  baseURL: rawUrl,
  headers: {
    "Content-Type": "application/json",
  },
});

export default api;
