import click
import typing
import os

from please.shell.aws import aws


@click.group()
@click.pass_context
def app(ctx: typing.Any):

    ctx.obj = {
        'src_dir': os.path.expanduser('~/dev/src')
    }


app.add_command(aws)
