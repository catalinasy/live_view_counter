defmodule CounterWeb.CounterLive do
    use Phoenix.LiveView

    def render(assigns) do
        ~L"""
        <div>
            <h1> The count is: <%= @val %></h1>
            <button phx-click="dec">-</button>
            <button phx-click="inc">+</button>
        </div>
        """
    end

    def mount(_session, socket) do
        {:ok, assign(socket, :val, 0)}
    end

    def handle_event("inc", value, socket) do
        {:noreply, update(socket, :val, fn x -> x+1 end)}
    end

    def handle_event("dec", _value, socket) do
        {:noreply, update(socket, :val, fn x -> x-1 end)}
    end
end

