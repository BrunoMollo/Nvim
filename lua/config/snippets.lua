local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("typescript", {
  s(
    "s-load",
    fmt(
      [[
import type {  PageServerLoad } from './$types';
import {  superValidate } from 'sveltekit-superforms/client';
export const load: PageServerLoad = async () => {
	const form = superValidate(¬);
	return { form };
};
    ]],
      { i(1) },
      { delimiters = "¬" }
    )
  ),
})

ls.add_snippets("typescript", {
  s(
    "s-action",
    fmt(
      [[
export const actions: Actions = {
	default: async ({ request, cookies }) => {
		const form = await superValidate(request, ¬);
		if (!form.valid) {
			return { form };
		}
        console.log(form.data)
        return {form}
	}
};
    ]],
      { i(1) },
      { delimiters = "¬" }
    )
  ),
})

ls.add_snippets("svelte", {
  s(
    "s-form",
    fmt(
      [[
	import { superForm } from 'sveltekit-superforms/client';

	export let data;
	const { form, enhance, errors, delayed, message } = superForm(data.form, {
		taintedMessage: null
	});
    ¬
    ]],
      { i(1) },
      { delimiters = "¬" }
    )
  ),
})

ls.add_snippets("svelte", {
  s(
    "s-pre",
    fmt(
      [[
<!-- TODO:remove -->
<pre>
  {JSON.stringify(¬,null,2)}
</pre>
    ]],
      { i(1) },
      { delimiters = "¬" }
    )
  ),
})
