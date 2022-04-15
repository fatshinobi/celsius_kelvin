# frozen_string_literal: true

RSpec.describe "CelsiusKelvin CLI" do
  it "supports --help flag" do
    command = "./exe/celsius_kelvin --help"
    expect { system(command) }
      .to_not output
      .to_stderr_from_any_process

    expect { system(command) }
      .to output(a_string_including("Convert amount between celsius and kelvin"))
      .to_stdout_from_any_process
  end

  it "supports converting celsius to kelvin" do
    command = "./exe/celsius_kelvin 30.3 --from cel --to kel"
    expect { system(command) }
      .to_not output
      .to_stderr_from_any_process

    expect { system(command) }
      .to output("303.45\n")
      .to_stdout_from_any_process
  end

  it "supports converting kelvin to celsius" do
    command = "./exe/celsius_kelvin 500.3 --from kel --to cel"
    expect { system(command) }
      .to_not output
      .to_stderr_from_any_process

    expect { system(command) }
      .to output("227.15\n")
      .to_stdout_from_any_process
  end

  it "requires an amount to be specified" do
    command = "./exe/celsius_kelvin --from kel --to cel"
    expect { system(command) }
      .to output(a_string_including("amount parameter required"))
      .to_stderr_from_any_process
  end

  it "requires the from and to args be specified" do
    command = "./exe/celsius_kelvin 10"
    expect { system(command) }
      .to output(a_string_including("--from parameter required, --to parameter required"))
      .to_stderr_from_any_process
  end
end
