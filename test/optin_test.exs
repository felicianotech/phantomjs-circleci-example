defmodule AppWeb.Features.OptinTest do
  use AppWeb.FeatureCase, async: false, file: "optin.feature"

  defgiven ~r/^the browser is open at "(?<path>[^"]+)"$/, %{path: path}, %{session: session} do
    {:ok, %{session: visit(session, path)}}
  end

  defwhen ~r/^the user clicks on the opt-in checkbox$/, _, %{session: session} do
    {:ok, %{session: click(session, checkbox("optin"))}}
  end

  defthen ~r/^the email input is not visible$/, _, %{session: session} do
    assert !visible?(session, text_field("email"))
  end

  defthen ~r/^the email input is visible$/, _, %{session: session} do
    assert visible?(session, text_field("email"))
  end
end
