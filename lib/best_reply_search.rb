module BestReplySearch

  ##
  # Uses Generalized Best Reply Search, BRS+, to calculate the best next move
  # from the given state, +starting_move+. It assumes that the player whose
  # turn it is in the given move is also the root player, i.e., the method
  # optimizes for the player that is to play a move. It searches until the
  # given +depth+.
  def best_reply_search(starting_move, depth)
    starting_move.next_moves.map do |move|
      gbrs move, depth, 0, starting_move.player
    end.min
  end

  private

  def gbrs(state, depth, count, root_player)
    return root_player.utility_value state if state.final?
    return root_player.heuristic_value state if 0 == depth

    available_moves = state.next_moves
    j = state.next_player
  end
end
