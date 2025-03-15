# DevOptimize Guidelines

## Commands

- Python scripts: Run directly (`python3 script.py`) or via shell wrappers
- Shell scripts: Support `-h` flag for help and `-v` for verbose mode
- Python environment:
  - Create venv: `virtualenv -p "$(which python3)" venv_dir`
  - Activate: `source venv_dir/bin/activate`
  - Install requirements: `pip install -r requirements.txt`

## Code Style

### Python

- Function naming: Descriptive prefixes (`do_fun_*`, `do_gitlab_api_*`)
- Logging: Use trace functions (`do_fun_trace_dbg/inf/wrn/err/nrm`)
- Error handling: Descriptive messages, proper exit codes

### Shell Scripts

- Function naming: Descriptive prefixes (`do_fun_*`, `do_func_*`)
- Parameter validation: Use `do_fun_validate_param()`
- Default values: `: "${PARAM:=default_value}"`
- Error handling: Check commands, provide context in errors

### Markdown

- Clear headings with appropriate levels
- Include table of contents for longer documents
- Link to related resources and documentation

### General

- Always include a newline at the end of all text files
- Maintain consistent indentation (spaces preferred)

