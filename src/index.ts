export default {
  async fetch(request, env, ctx): Promise<Response> {
    return env.container.fetch(request);
  }
}
