#entrance to meditation

#heartbeat
in_thread do
  loop do
    use_synth :hollow
    play :c3, amp: 0.65, decay: 0.5
    sleep 2
  end
end

#breathe
in_thread do
  sleep 8
  use_synth :pretty_bell
  play :Cs3, decay: 8
  sleep 4
  live_loop :breathe do
    sample :ambi_swoosh, amp: 2, rate: 0.4
    sleep 4
  end
end

#sound meditation
in_thread do
  sleep 22
  loop do
    sample :ambi_glass_rub, amp: 0.02, decay: 4
    sleep 2
  end
end

#piano melody inspried by SYML
in_thread do
  sleep 26
  2.times do
    with_fx :reverb do
      use_synth :piano
      play :c5, decay: 4, amp: 0.5
      sleep 1.75
      play :g4, release: 0.5, amp: 0.5
      sleep 0.25
      play :f4, amp: 0.5
      sleep 0.75
      play :e4, amp: 0.5, decay: 1
      sleep 0.25
      play :c4, decay: 2, amp: 0.5
      sleep 2
      play_pattern_timed chord(:c4, :m7), [0.25, 0.25], amp: 0.5
      play :g4, decay: 3, amp: 0.5
      sleep 2
      play :f4, relase: 0.25, amp: 0.5
      sleep 0.15
      play :g4, release: 0.35, amp: 0.5
      sleep 0.15
      play :f4, decay: 1, amp: 0.5
      sleep 0.85
      play :c4, decay: 4, amp: 0.5
      sleep 4
    end
  end
end

#base beat
in_thread do
  sleep 39
  live_loop :base do
    sample :ambi_choir, amp: 0.6, beat_stretch: 4, rate: 0.4
    sleep 1
  end
end

in_thread do
  sleep 52
  10.times do
    use_synth :piano
    play 48, amp: 0.09
    sleep 2
  end
end

in_thread do
  sleep 62
  use_synth :piano
  with_fx :reverb do
    play 48, decay: 3, amp: 0.15
    sleep 2
    play 51, decay: 3, amp: 0.2
    sleep 2
    play 55, decay: 3, amp: 0.25
    sleep 2
    play 51, decay: 3, amp: 0.3
    sleep 2
    play 55, decay: 3, amp: 0.35
    sleep 2
    play 51, decay: 3, amp: 0.3
    sleep 2
    play 55, decay: 3, amp: 0.3
  end
end

in_thread do
  sleep 76
  use_synth :piano
  play 48, decay: 3, amp: 0.3
  sleep 1.6
  play 51, decay: 3, amp: 0.5
  sleep 1.6
  play 55, decay: 2, amp: 0.5
  sleep 1.6
  play 51, decay: 3, amp: 0.5
  sleep 1.6
  play 55, decay: 3, amp: 0.5
  sleep 1.6
  play 51, decay: 2, amp: 0.5
  sleep 1.6
  play 55, decay: 3, amp: 0.5
  sleep 1.6
  play 51, decay: 3, amp: 0.5
  sleep 3.2
  2.times do
    play 48, decay: 3, amp: 0.3
    sleep 0.8
    play 51, decay: 3, amp: 0.5
    sleep 0.8
    play 55, decay: 2, amp: 0.5
    sleep 0.8
    play 51, decay: 3, amp: 0.5
    sleep 0.8
    play 55, decay: 3, amp: 0.5
    sleep 0.8
    play 51, decay: 2, amp: 0.5
    sleep 0.8
    play 55, decay: 3, amp: 0.5
    sleep 0.8
    play 51, decay: 3, amp: 0.5
    sleep 0.8
  end
  use_synth :piano
  play_pattern_timed chord(:c3, :m7), [0.7, 0.5], amp: 0.5, decay: 3
  sleep 0.25
  play_pattern_timed chord(:c3, :m7), [0.6, 0.5], amp: 0.5, decay: 3
  sleep 0.25
  play_pattern_timed chord(:c3, :m7), [0.5, 0.5], amp: 0.5, decay: 3
  sleep 0.2
  play_pattern_timed chord(:c3, :m7), [0.4, 0.5], amp: 0.5, decay: 3
  sleep 0.15
  6.times do
    with_fx :reverb do
      use_synth :piano
      play_pattern_timed chord(:c3, :m7), [0.3, 0.5], amp: 0.5, decay: 3
      play :g4, decay: 1, amp: 0.4
    end
  end
  play_pattern_timed chord(:c3, :m7), [0.3, 0.5], amp: 0.45, decay: 3
  play :g4, decay: 2, amp: 0.5
  sleep 2
  play_pattern_timed chord(:c3, :m7), [0.3, 0.5], amp: 0.4, decay: 3
  play :g4, decay: 2, amp: 0.45
  sleep 1.9
  play_pattern_timed chord(:c3, :m7), [0.3, 0.5], amp: 0.35, decay: 3
  play :g4, decay: 2, amp: 0.4
  sleep 1.8
  play_pattern_timed chord(:c3, :m7), [0.3, 0.5], amp: 0.3, decay: 3
  play :g4, decay: 2, amp: 0.35
  sleep 1.7
  play_pattern_timed chord(:c3, :m7), [0.3, 0.5], amp: 0.25, decay: 3
  play :g4, decay: 2, amp: 0.3
  sleep 1.6
  play_pattern_timed chord(:c3, :m7), [0.3, 0.5], amp: 0.2, decay: 3
  play :g4, decay: 2, amp: 0.25
  sleep 1.5
  play_pattern_timed chord(:c3, :m7), [0.3, 0.5], amp: 0.15, decay: 3
  play :g4, decay: 2, amp: 0.2
  sleep 1.4
  play_pattern_timed chord(:c3, :m7), [0.3, 0.5], amp: 0.1, decay: 3
  play :g4, decay: 2, amp: 0.15
  sleep 1.3
  play_pattern_timed chord(:c3, :m7), [0.3, 0.5], amp: 0.05, decay: 3
  play :g4, decay: 2, amp: 0.14
  sleep 1.2
  play_pattern_timed chord(:c3, :m7), [0.3, 0.5], amp: 0.05, decay: 3
  play :g4, decay: 1.5, amp: 0.13
  sleep 1.1
  play_pattern_timed chord(:c3, :m7), [0.3, 0.5], amp: 0.05, decay: 3
  play :g4, decay: 1.5, amp: 0.12
  sleep 1
  play_pattern_timed chord(:c3, :m7), [0.3, 0.5], amp: 0.05, decay: 3
  play :g4, decay: 1.5, amp: 0.11
  sleep 0.9
  play_pattern_timed chord(:c3, :m7), [0.3, 0.5], amp: 0.05, decay: 3
  play :g4, decay: 2, amp: 0.1
  sleep 0.8
  play_pattern_timed chord(:c3, :m7), [0.3, 0.5], amp: 0.05, decay: 3
  play :g4, decay: 2, amp: 0.09
  sleep 0.7
  play_pattern_timed chord(:c3, :m7), [0.3, 0.5], amp: 0.05, decay: 3
  play :g4, decay: 2.5, amp: 0.08
  sleep 0.6
  play :gb4, decay: 2, amp: 0.06
  sleep 0.43
  play :f4, decay: 2, amp: 0.06
  sleep 0.42
  play :gb4, decay: 2, amp: 0.07
  sleep 0.41
  play :g4, decay: 3, amp: 0.07
  sleep 0.4
  play :gb4, decay: 2, amp: 0.07
  sleep 0.4
  play :f4, decay: 2, amp: 0.07
  sleep 0.35
  play :e4, decay: 2, amp: 0.07
  sleep 0.35
  play :f4, decay: 2, amp: 0.08
  sleep 0.3
  play :gb4, decay: 2, amp: 0.09
  sleep 0.3
  play :g4, decay: 3, amp: 0.1
  sleep 0.25
  play :gb4, decay: 2, amp: 0.12
  sleep 0.25
  play :f4, decay: 2, amp: 0.13
  sleep 0.25
  play :e4, decay: 2, amp: 0.14
  sleep 0.25
  play :eb4, decay: 2, amp: 0.15
  sleep 0.25
  play :e4, decay: 2, amp: 0.16
  sleep 0.25
  play :f4, decay: 2, amp: 0.17
  sleep 0.25
  play :gb4, decay: 2, amp: 0.18
  sleep 0.25
  play :g4, decay: 3, amp: 0.19
  sleep 0.25
  play :gb4, decay: 2, amp: 0.2
  sleep 0.25
  play :f4, decay: 2, amp: 0.25
  sleep 0.25
  play :e4, decay: 2, amp: 0.3
  sleep 0.25
  play :eb4, decay: 2, amp: 0.35
  sleep 0.25
  play :d4, decay: 2, amp: 0.4
  sleep 0.25
  play :eb4, decay: 2, amp: 0.45
  sleep 0.25
  play :e4, decay: 2, amp: 0.5
  sleep 0.25
  play :f4, decay: 2, amp: 0.5
  sleep 0.25
  play :gb4, decay: 2, amp: 0.5
  sleep 0.25
  4.times do
    with_fx :reverb do
      use_synth :piano
      play_pattern_timed chord(:c4, :m7), [0.3, 0.5], amp: 0.5, decay: 3
    end
  end
  with_fx :reverb do
    use_synth :piano
    play_pattern_timed chord(:c3, :m7), [0.3, 0.5], amp: 0.5, decay: 3
    play_pattern_timed chord(:c3, :m7), [0.4, 0.6], amp: 0.5, decay: 3
    play_pattern_timed chord(:c3, :m7), [0.5, 0.7], amp: 0.5, decay: 3
    play_pattern_timed chord(:c3, :m7), [0.65, 0.85], amp: 0.5, decay: 3
    play_pattern_timed chord(:c3, :m7), [0.8, 1], amp: 0.5, decay: 3
    play_pattern_timed chord(:c3, :m7), [1, 1.2], amp: 0.5, decay: 3
    play_pattern_timed chord(:c3, :m7), [1.5, 1.5], amp: 0.5, decay: 3
    play_pattern_timed chord(:c3, :m7), [2, 2.2], amp: 0.5, decay: 3
  end
end

in_thread do
  sleep 216
  use_synth :piano
  play 48, decay: 3, amp: 0.3
  sleep 2
  play 48, decay: 3, amp: 0.3
  sleep 2
  play 48, decay: 3, amp: 0.3
  sleep 2
  3.times do
    with_fx :reverb do
      use_synth :piano
      play :c3, decay: 4, amp: 0.5
      sleep 1.75
      play :g3, release: 0.5, amp: 0.5
      sleep 0.25
      play :f3, amp: 0.5
      sleep 0.75
      play :e3, amp: 0.5, decay: 1
      sleep 0.25
      play :c3, decay: 2, amp: 0.5
      sleep 2
      play_pattern_timed chord(:c3, :m7), [0.25, 0.25], amp: 0.5
      play :g3, decay: 3, amp: 0.5
      sleep 2
      play :f3, relase: 0.25, amp: 0.5
      sleep 0.15
      play :g3, release: 0.35, amp: 0.5
      sleep 0.15
      play :f3, decay: 1, amp: 0.5
      sleep 0.85
      play :c3, decay: 4, amp: 0.5
      sleep 4
    end
  end
end

in_thread do
  sleep 262
  use_synth :piano
  play :c5, decay: 4, amp: 0.5
  sleep 2
  play :c5, decay: 4, amp: 0.5
  sleep 2
  play :g4, release: 0.5, amp: 0.5
  sleep 1
  play :f4, amp: 0.5
  sleep 1
  play :e4, amp: 0.5, decay: 1
  sleep 0.5
  play :c4, decay: 8, amp: 0.5
  sleep 4
  sample :ambi_sauna, decay: 3, amp: 0.01
  sleep 0.15
  sample :ambi_sauna, decay: 3, amp: 0.02
  sleep 0.15
  sample :ambi_sauna, decay: 3, amp: 0.03
  sleep 0.15
  sample :ambi_sauna, decay: 3, amp: 0.04
  sleep 0.15
  sample :ambi_sauna, decay: 3, amp: 0.05
  sleep 0.15
  sample :ambi_sauna, decay: 3, amp: 0.06
  sleep 0.15
  sample :ambi_sauna, decay: 3, amp: 0.07
  sleep 0.15
  sample :ambi_sauna, decay: 3, amp: 0.08
  sleep 0.15
  sample :ambi_sauna, decay: 3, amp: 0.09
  sleep 0.15
  sample :ambi_sauna, decay: 3, amp: 0.1
  sleep 0.15
  sample :ambi_sauna, decay: 3, amp: 0.15
  sleep 0.15
  sample :ambi_sauna, decay: 3, amp: 0.2
  sleep 0.15
  4.times do
    sample :ambi_sauna, decay: 3, amp: 0.23
    sleep 0.1
  end
  sleep 16
  use_synth :pretty_bell
  play :c3, decay: 10
end













