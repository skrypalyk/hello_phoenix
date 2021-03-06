defmodule HelloPhoenix.ContactView do
  use HelloPhoenix.Web, :view

  def render("index.json", %{contacts: contacts}) do
    %{data: render_many(contacts, HelloPhoenix.ContactView, "contact.json")}
  end

  def render("show.json", %{contact: contact}) do
    %{data: render_one(contact, HelloPhoenix.ContactView, "contact.json")}
  end

  def render("contact.json", %{contact: contact}) do
    %{id: contact.id,
      name: contact.name,
      phone: contact.phone}
  end
end
