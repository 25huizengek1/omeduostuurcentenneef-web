import { error, type RequestHandler } from "@sveltejs/kit";
import { env } from "$env/dynamic/private";

export const GET: RequestHandler = async () => {
  const endpoint = env.GH_README_STATS_ENDPOINT;
  if (!endpoint) {
    error(500, "Server is not capable of generating readme");
  }
  try {
    return new Response(await (await fetch(endpoint)).blob());
  } catch (e) {
    console.error("Failed to generate readme", e);
    error(500, "Server cannot generate readme at this moment");
  }
};
